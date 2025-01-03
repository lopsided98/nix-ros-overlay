
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rcss3d-agent-msgs, soccer-vision-3d-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rcss3d-agent-msgs-to-soccer-interfaces";
  version = "0.4.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/jazzy/rcss3d_agent_msgs_to_soccer_interfaces/0.4.1-4.tar.gz";
    name = "0.4.1-4.tar.gz";
    sha256 = "f825caeba7d70ba690a44a3afb19fdde5368017d7496c983762e4895477382f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcss3d-agent-msgs soccer-vision-3d-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Library with methods that convert rcss3d_agent_msgs to soccer_interfaces";
    license = with lib.licenses; [ asl20 ];
  };
}
