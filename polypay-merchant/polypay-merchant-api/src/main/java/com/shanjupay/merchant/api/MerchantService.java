package com.shanjupay.merchant.api;

import com.shanjupay.common.domain.BusinessException;
import com.shanjupay.common.domain.PageVO;
import com.shanjupay.merchant.api.dto.MerchantDTO;
import com.shanjupay.merchant.api.dto.MerchantQueryDTO;
import com.shanjupay.merchant.api.dto.StaffDTO;
import com.shanjupay.merchant.api.dto.StoreDTO;

import java.util.List;

/**
 * Created by Administrator.
 */
public interface MerchantService {

    //根据 id查询商户
    public MerchantDTO queryMerchantById(Long id);

    /**
     * 根据租户id查询商户的信息
     * @param tenantId
     * @return
     */
    public MerchantDTO queryMerchantByTenantId(Long tenantId);

    /**
     *  注册商户服务接口，接收账号、密码、手机号，为了可扩展性使用merchantDto接收数据
     * @param merchantDTO 商户注册信息
     * @return 注册成功的商户信息
     */
    MerchantDTO createMerchant(MerchantDTO merchantDTO) throws BusinessException;

    /**
     * 资质申请接口
     * @param merchantId 商户id
     * @param merchantDTO 资质申请的信息
     * @throws BusinessException
     */
    void applyMerchant(Long merchantId,MerchantDTO merchantDTO) throws BusinessException;



    /**
     * 新增门店
     * @param storeDTO 门店信息
     * @return 新增成功的门店信息
     * @throws BusinessException
     */
    StoreDTO createStore(StoreDTO storeDTO) throws BusinessException;


    /**
     * 新增员工
     * @param staffDTO 员工信息
     * @return 新增成功的员工信息
     * @throws BusinessException
     */
    StaffDTO createStaff(StaffDTO staffDTO) throws BusinessException;


    /**
     * 将员工设置为门店的管理员
     * @param storeId
     * @param staffId
     * @throws BusinessException
     */
    void bindStaffToStore(Long storeId, Long staffId) throws BusinessException;

    /**
     * 门店列表的查询
     * @param storeDTO 查询条件，必要参数：商户id
     * @param pageNo  页码
     * @param pageSize 分页记录数
     * @return
     */
    PageVO<StoreDTO> queryStoreByPage(StoreDTO storeDTO,Integer pageNo,Integer pageSize);

    /**
     * 校验门店是否属于商户
     * @param StoreId
     * @param merchantId
     * @return
     */
    Boolean queryStoreInMerchant(Long StoreId,Long merchantId);

	/**
	 * 商户分页条件查询
	 * @param merchantQueryDTO
	 * @param pageNo
	 * @param pageSize
	 * @return
	 * @throws BusinessException
	 */
	PageVO<MerchantDTO> queryMerchantPage(MerchantQueryDTO merchantQueryDTO, Integer pageNo, Integer pageSize) throws BusinessException;

	/**
	 * 商户资质审核
	 * @param merchantId
	 * @param auditStatus
	 * @throws BusinessException
	 */
	void verifyMerchant(Long merchantId, String auditStatus) throws BusinessException;

	/**
	 * 商户下新增门店,并设置管理员
	 * @param storeDTO
	 */
	StoreDTO createStore(StoreDTO storeDTO, List<Long> staffIds) throws BusinessException;

	/**
	 * 分页查询商户下的员工
	 * @param staffDTO
	 * @param pageNo
	 * @param pageSize
	 * @return
	 * @throws BusinessException
	 */
	PageVO<StaffDTO> queryStaffByPage(StaffDTO staffDTO, Integer pageNo, Integer pageSize)
			throws BusinessException;

	/**
	 * 查询某个门店
	 * @param id
	 * @return
	 */
	StoreDTO queryStoreById(Long id) throws BusinessException;

	/**
	 * 修改门店
	 * @param store
	 */
	void modifyStore(StoreDTO store, List<Long> staffIds) throws BusinessException;

	/**
	 * 删除某门店
	 * @param id
	 */
	void removeStore(Long id) throws BusinessException;

	/**
	 * 商户新增员工和账号
	 * @param staffDTO
	 * @throws BusinessException
	 */
	void createStaffAndAccount(StaffDTO staffDTO, String [] roleCodes) throws BusinessException;

	/**
	 * 查询员工详情
	 */
	StaffDTO queryStaffDetail(Long id, Long tenantId);

	/**
	 * 修改员工信息
	 * @param staff
	 * @throws BusinessException
	 */
	void modifyStaff(StaffDTO staff, String [] roleCodes) throws BusinessException;

	/**
	 * 删除员工
	 * @throws BusinessException
	 */
	void removeStaff(Long id) throws BusinessException;
}
