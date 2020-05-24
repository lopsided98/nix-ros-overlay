
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-updater, dynamic-reconfigure, gtest, libyamlcpp, marti-common-msgs, message-generation, message-runtime, nav-msgs, pkg-config, roscpp, rostest, rosunit, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-swri-roscpp";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_roscpp/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "d692841be8e83fd1b680c19aeee96178c79a0fe6b37f588bfb23d04f28dc6d2e";
  };

  buildType = "catkin";
  checkInputs = [ gtest message-generation message-runtime rostest rosunit ];
  propagatedBuildInputs = [ boost diagnostic-updater dynamic-reconfigure libyamlcpp marti-common-msgs nav-msgs roscpp std-msgs std-srvs ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''swri_roscpp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
