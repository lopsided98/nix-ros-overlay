
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-mir-msgs";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_msgs/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "77c03361f0e213f65f6d710ea373b2af6d83f37a5afd0ad38564a75de43215bc";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
