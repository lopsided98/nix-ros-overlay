
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, roscpp, nodelet }:
buildRosPackage {
  pname = "ros-melodic-nodelet-tutorial-math";
  version = "0.1.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_tutorials-release/archive/release/melodic/nodelet_tutorial_math/0.1.11-0.tar.gz;
    sha256 = "399778f44a140cd9fd5b0ed41b8c88408803791a64b0c3d006bca4b174b1669f";
  };

  propagatedBuildInputs = [ std-msgs nodelet roscpp ];
  nativeBuildInputs = [ std-msgs catkin nodelet roscpp ];

  meta = {
    description = ''Package for Nodelet tutorial.'';
    #license = lib.licenses.BSD;
  };
}
