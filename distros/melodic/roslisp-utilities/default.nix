
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp }:
buildRosPackage {
  pname = "ros-melodic-roslisp-utilities";
  version = "0.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/roslisp_utilities/0.2.13-1.tar.gz";
    name = "0.2.13-1.tar.gz";
    sha256 = "d00d8ac04df0def12d8ff4a78bf4266bf0cc3b8c9259686f4d66a6368422e7cd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some utility functionality to interact with ROS using roslisp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
