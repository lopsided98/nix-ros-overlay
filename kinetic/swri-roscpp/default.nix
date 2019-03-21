
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, gtest, catkin, diagnostic-updater, rostest, nav-msgs, marti-common-msgs, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-swri-roscpp";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_roscpp/2.8.0-0.tar.gz;
    sha256 = "3e767369c7d950e2c4ed858a25be1fabc8d428fc4003c0bc518c43e3e73bc038";
  };

  checkInputs = [ rostest gtest ];
  propagatedBuildInputs = [ diagnostic-updater std-srvs nav-msgs marti-common-msgs dynamic-reconfigure std-msgs roscpp ];
  nativeBuildInputs = [ diagnostic-updater std-srvs nav-msgs marti-common-msgs dynamic-reconfigure std-msgs catkin roscpp ];

  meta = {
    description = ''swri_roscpp'';
    #license = lib.licenses.BSD;
  };
}
