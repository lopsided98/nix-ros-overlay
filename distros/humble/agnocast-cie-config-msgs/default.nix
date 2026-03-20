
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-agnocast-cie-config-msgs";
  version = "2.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_cie_config_msgs/2.3.1-3.tar.gz";
    name = "2.3.1-3.tar.gz";
    sha256 = "b266ba66c0997c17b9ea73557654c4332a90688bc44274808390f9bfc7904879";
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
