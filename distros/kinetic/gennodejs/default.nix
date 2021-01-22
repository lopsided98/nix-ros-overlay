
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg }:
buildRosPackage {
  pname = "ros-kinetic-gennodejs";
  version = "2.0.1";

  src = fetchurl {
    url = "https://github.com/RethinkRobotics-release/gennodejs-release/archive/release/kinetic/gennodejs/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "5a17bc95869c18c3e5a951a694621addbf3f1d81c916e9ae873e9821c320c3f1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Javascript ROS message and service generators.'';
    license = with lib.licenses; [ asl20 ];
  };
}
