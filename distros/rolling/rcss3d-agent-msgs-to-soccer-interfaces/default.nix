
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rcss3d-agent-msgs, soccer-vision-3d-msgs }:
buildRosPackage {
  pname = "ros-rolling-rcss3d-agent-msgs-to-soccer-interfaces";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/rolling/rcss3d_agent_msgs_to_soccer_interfaces/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "e4da18a0e61fdc67bdff15028cd7f8538adf3535c2b17d9bca0e5ad5004a1d36";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcss3d-agent-msgs soccer-vision-3d-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Library with methods that convert rcss3d_agent_msgs to soccer_interfaces'';
    license = with lib.licenses; [ asl20 ];
  };
}
