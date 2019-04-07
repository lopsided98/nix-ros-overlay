
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, gtest, catkin, diagnostic-updater, rostest, nav-msgs, marti-common-msgs, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-swri-roscpp";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_roscpp/2.8.0-0.tar.gz;
    sha256 = "3bdea82fbf4bc4b3aad6f4b209877e9c34926fc2c7a3a732215a9f3c9a9aeffb";
  };

  buildInputs = [ diagnostic-updater std-srvs nav-msgs marti-common-msgs dynamic-reconfigure std-msgs roscpp ];
  checkInputs = [ rostest gtest ];
  propagatedBuildInputs = [ diagnostic-updater std-srvs nav-msgs marti-common-msgs dynamic-reconfigure std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_roscpp'';
    #license = lib.licenses.BSD;
  };
}
