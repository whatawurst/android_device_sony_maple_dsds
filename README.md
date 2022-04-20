Device configuration for Sony Xperia XZ Premium dual sim variant (maple_dsds)
========================================================

Description
-----------

This repository is for LineageOS 19.1 on Sony Xperia XZ Premium dual sim variant (maple_dsds).

How to build LineageOS
----------------------

* Make a workspace:

        mkdir -p ~/lineageos
        cd ~/lineageos

* Initialize the repo:

        repo init -u git://github.com/LineageOS/android.git -b lineage-19.1

* Create a local manifest:

        vim .repo/local_manifests/roomservice.xml

        <?xml version="1.0" encoding="UTF-8"?>
        <manifest>
            <!-- SONY -->
            <project name="whatawurst/android_kernel_sony_msm8998" path="kernel/sony/msm8998" remote="github" revision="lineage-19.1" />
            <project name="whatawurst/android_device_sony_yoshino-common" path="device/sony/yoshino-common" remote="github" revision="lineage-19.1" />
            <project name="whatawurst/android_device_sony_maple_dsds" path="device/sony/maple_dsds" remote="github" revision="lineage-19.1" />

            <!-- Pinned blobs for poplar -->
            <project name="whatawurst/android_vendor_sony_maple_dsds" path="vendor/sony/maple_dsds" remote="github" revision="lineage-19.1" />
        </manifest>

* Sync the repo:

        repo sync

* Setup the environment

        source build/envsetup.sh
        lunch lineage_maple_dsds-userdebug

* Build LineageOS

        make -j8 bacon
