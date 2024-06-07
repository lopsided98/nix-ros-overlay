
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-data-tamer-msgs";
  version = "0.9.4-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer-release/archive/release/jazzy/data_tamer_msgs/0.9.4-4.tar.gz";
    name = "0.9.4-4.tar.gz";
    sha256 = "f4e7ba8ccd1973b55511f5506a9370efb7ebcfa3093430c89a2fee1fead75dfc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Interfaces for data_tamer";
    license = with lib.licenses; [ mit ];
  };
}
