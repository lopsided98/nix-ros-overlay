
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-agnocast-cie-config-msgs";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/agnocast_cie_config_msgs/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "0e6d75737b9056ce2fd187c35138e9bd843774b90f4d1f38ed1e6d9e1c39cb71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS messages for interaction between cie_thread_configurator and callback_isolated_executor.";
    license = with lib.licenses; [ asl20 ];
  };
}
