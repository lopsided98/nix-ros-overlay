
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-vrxperience-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/autowarefoundation/ansys-vrxperience-ros2-release/archive/release/foxy/vrxperience_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "94c8ac5f9bf2b5d175e9c57f44c3c05a8ec28953c18eff9aef33117feda928a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Message definitions required for integration with Ansys VRXPERIENCE'';
    license = with lib.licenses; [ asl20 ];
  };
}
