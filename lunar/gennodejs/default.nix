
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genmsg, catkin }:
buildRosPackage {
  pname = "ros-lunar-gennodejs";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/RethinkRobotics-release/gennodejs-release/archive/release/lunar/gennodejs/2.0.1-0.tar.gz;
    sha256 = "66a15f5a929b7792aa1237c1afaba0dbde8fd2808a207c4e85d5f3e3b51397a5";
  };

  buildInputs = [ genmsg ];
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Javascript ROS message and service generators.'';
    license = with lib.licenses; [ asl20 ];
  };
}
