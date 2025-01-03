
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-pal-statistics-msgs";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_statistics-release/archive/release/humble/pal_statistics_msgs/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "a6fda15a4111b4a73278bfefbc187d42ef0be3c4a17d40394ce5b98a284afacc";
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
