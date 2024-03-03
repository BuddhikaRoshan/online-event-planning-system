package services;

import java.util.List;

import dao.PackagesDao;
import models.Package;

public class PackagesService {
    private PackagesDao packagesDao = new PackagesDao();

    
    public List<Package> getAllPackages() {
        return packagesDao.getAllPackages();
    }

    public Package getPackageById(int id) {
        return packagesDao.getPackageById(id);
    }

    public boolean addPackage(Package pkg) {
        return packagesDao.addPackage(pkg);
    }

    public boolean updatePackage(Package pkg) {
        return packagesDao.updatePackage(pkg);
    }

    public boolean deletePackage(int id) {
        return packagesDao.deletePackage(id);
    }
}
