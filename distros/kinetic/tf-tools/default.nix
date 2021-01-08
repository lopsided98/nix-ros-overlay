
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-tf-tools";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/srv/srv_tools-release/archive/release/kinetic/tf_tools/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "e3c2f3524ebb86c4063a304e5b89c04d4b12fbbf65ebc1f6f8a816c73e8e9528";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nav-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS tools and scripts relates to tf'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
