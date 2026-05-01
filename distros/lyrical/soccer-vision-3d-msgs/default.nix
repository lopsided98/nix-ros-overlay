
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, soccer-vision-attribute-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-lyrical-soccer-vision-3d-msgs";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/lyrical/soccer_vision_3d_msgs/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "5b50f56719760fb12ed69854c620c2875fb1505f9e5d0f34dfae96884118ac23";
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
