
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-updater, dynamic-reconfigure, gtest, libyamlcpp, marti-common-msgs, message-generation, message-runtime, nav-msgs, pkg-config, roscpp, rostest, rosunit, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-swri-roscpp";
  version = "2.13.6-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_roscpp/2.13.6-1.tar.gz";
    name = "2.13.6-1.tar.gz";
    sha256 = "5ffa759a9fd183b3e2f49ca7137e05aab6d2703651ebe3f4dfb927319d4feb17";
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
