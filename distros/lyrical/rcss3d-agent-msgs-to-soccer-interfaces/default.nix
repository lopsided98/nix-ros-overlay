
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rcss3d-agent-msgs, soccer-vision-3d-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rcss3d-agent-msgs-to-soccer-interfaces";
  version = "0.4.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/lyrical/rcss3d_agent_msgs_to_soccer_interfaces/0.4.1-5.tar.gz";
    name = "0.4.1-5.tar.gz";
    sha256 = "b9fb70369129f9cd1d88be915e320af6405c1d9a9805a0a2dceb821a7bd2bb39";
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
