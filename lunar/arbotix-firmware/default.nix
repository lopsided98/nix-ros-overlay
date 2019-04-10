
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-arbotix-firmware";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/lunar/arbotix_firmware/0.10.0-0.tar.gz;
    sha256 = "4ad3135fab7470d1ba5167405fd1f16e654772e697d4ac104283a60944bedb88";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Firmware source code for ArbotiX ROS bindings.'';
    #license = lib.licenses.BSD;
  };
}
