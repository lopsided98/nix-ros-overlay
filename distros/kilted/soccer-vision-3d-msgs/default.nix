
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, soccer-vision-attribute-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-kilted-soccer-vision-3d-msgs";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/kilted/soccer_vision_3d_msgs/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "b13a35bbf8ddaca36b3b08e34a74c8a10510955d7089ece16e8543fd7d7f8a55";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime soccer-vision-attribute-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some 3D vision related message definitions in the soccer domain.";
    license = with lib.licenses; [ asl20 ];
  };
}
