
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-tf2-py";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/tf2_py/0.5.20-0.tar.gz;
    sha256 = "8f7508bd083cba2f64556eed6969119a15a86ce0f9a0f867d34fd9c3f4a17601";
  };

  buildInputs = [ tf2 rospy ];
  propagatedBuildInputs = [ tf2 rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tf2_py package'';
    #license = lib.licenses.BSD;
  };
}
