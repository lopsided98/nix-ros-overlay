
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-pal-statistics-msgs";
  version = "2.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_statistics-release/archive/release/lyrical/pal_statistics_msgs/2.7.0-3.tar.gz";
    name = "2.7.0-3.tar.gz";
    sha256 = "d1ca521d33075aa2330cdcc5994999bb30111d03f06b5dcae632e55155fb1db7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Statistics msgs package";
    license = with lib.licenses; [ mit ];
  };
}
