
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-fadecandy-msgs";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/eurogroep/fadecandy_ros-release/archive/release/humble/fadecandy_msgs/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "16629179ec834b935eef72c2a38873024385c1d1251bf5d01d6c652170b576d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS msgs for fadecandy LED controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
