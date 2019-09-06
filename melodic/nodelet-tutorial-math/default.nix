
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, roscpp, catkin, nodelet }:
buildRosPackage {
  pname = "ros-melodic-nodelet-tutorial-math";
  version = "0.1.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/melodic/nodelet_tutorial_math/0.1.11-0.tar.gz";
    name = "0.1.11-0.tar.gz";
    sha256 = "399778f44a140cd9fd5b0ed41b8c88408803791a64b0c3d006bca4b174b1669f";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs nodelet roscpp ];
  propagatedBuildInputs = [ std-msgs nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for Nodelet tutorial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
