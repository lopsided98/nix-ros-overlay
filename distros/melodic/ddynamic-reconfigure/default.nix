
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, gtest, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-ddynamic-reconfigure";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/ddynamic_reconfigure/archive/release/melodic/ddynamic_reconfigure/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "a8780576fba89c6bca7aa268f718041ab724d3f24ff44823b7dabee3f4b3315d";
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
