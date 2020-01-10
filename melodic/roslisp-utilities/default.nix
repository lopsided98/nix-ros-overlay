
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp }:
buildRosPackage {
  pname = "ros-melodic-roslisp-utilities";
  version = "0.2.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/roslisp_utilities/0.2.12-1.tar.gz";
    name = "0.2.12-1.tar.gz";
    sha256 = "285715fab6f8d3f65174fcc8eead6849d9f69e2c5870a454a96c879b7325f458";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some utility functionality to interact with ROS using roslisp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
