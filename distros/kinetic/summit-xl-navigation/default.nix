
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gmapping, navigation }:
buildRosPackage {
  pname = "ros-kinetic-summit-xl-navigation";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/summit_xl_common-release/archive/release/kinetic/summit_xl_navigation/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "f2471767b088d4663cee59249914f219f062c760ade542e97ad3bec4b439eb6a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gmapping navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation launch and config files for Summit XL robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
