
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-raptor-dbw-msgs";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/raptor_dbw_msgs/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "e547e972516b2602a0678d4b7e7f39f02c71867f2c86665020185bd92d9cbde8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = ''Messages for the New Eagle Raptor DBW kit interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
