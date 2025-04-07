
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-localization-msgs";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_msgs-release/archive/release/jazzy/autoware_localization_msgs/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "25e9a3a836902250c8e06b0971ea2d4bc4e4cf52b4d1b76f6cf45a724eff92f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Autoware localization messages package.";
    license = with lib.licenses; [ asl20 ];
  };
}
