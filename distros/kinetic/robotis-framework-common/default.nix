
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robotis-device, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-robotis-framework-common";
  version = "0.2.9";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-Framework-release/archive/release/kinetic/robotis_framework_common/0.2.9-0.tar.gz";
    name = "0.2.9-0.tar.gz";
    sha256 = "4df2967e21738d25f6fca8c0b6ec8880fb9b40f58841b1b9979d7dcf7e68867a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robotis-device roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package contains commonly used Headers for the ROBOTIS Framework.'';
    license = with lib.licenses; [ asl20 ];
  };
}
