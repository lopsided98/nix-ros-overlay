
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-pal-statistics-msgs";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_statistics-release/archive/release/rolling/pal_statistics_msgs/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "ba6fb66cba9e921f18f0482533624e5dfb408f135efff963f4d326c72233ef01";
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
