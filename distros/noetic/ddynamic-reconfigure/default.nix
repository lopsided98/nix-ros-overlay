
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, gtest, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-ddynamic-reconfigure";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/ddynamic_reconfigure/archive/release/noetic/ddynamic_reconfigure/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "1eb2ca206bff8c11dfc8522a25051d2f0ada8e36779e7c7f6f517ca3ac49a593";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ddynamic_reconfigure package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
