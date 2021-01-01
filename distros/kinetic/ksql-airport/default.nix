
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-kinetic-ksql-airport";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/uav_testing-release/archive/release/kinetic/ksql_airport/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "a2f16a1a50e86346428455dabeae82e5a37d0e66f44440e13d2b21d23da8573c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ksql_airport package'';
    license = with lib.licenses; [ asl20 ];
  };
}
