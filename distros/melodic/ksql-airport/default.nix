
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-melodic-ksql-airport";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/uav_testing-release/archive/release/melodic/ksql_airport/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "b889d36b4514ad7eb0585a6a63a596a04cc2b909d1ba90ef3ca858be9a99de47";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ksql_airport package'';
    license = with lib.licenses; [ asl20 ];
  };
}
