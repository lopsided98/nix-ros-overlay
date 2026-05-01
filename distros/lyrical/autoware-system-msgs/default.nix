
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-common-msgs, builtin-interfaces, diagnostic-msgs, geometry-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-lyrical-autoware-system-msgs";
  version = "1.11.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_msgs-release/archive/release/lyrical/autoware_system_msgs/1.11.0-3.tar.gz";
    name = "1.11.0-3.tar.gz";
    sha256 = "b14107604fde1d25fbdb7ef8e0a7afa39648436cfbbdd77212e30d4ea6a394d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-common-msgs builtin-interfaces diagnostic-msgs geometry-msgs nav-msgs rosidl-default-runtime std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Autoware system messages package.";
    license = with lib.licenses; [ asl20 ];
  };
}
