
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rcss3d-agent-msgs, soccer-vision-3d-msgs }:
buildRosPackage {
  pname = "ros-iron-rcss3d-agent-msgs-to-soccer-interfaces";
  version = "0.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/iron/rcss3d_agent_msgs_to_soccer_interfaces/0.4.1-3.tar.gz";
    name = "0.4.1-3.tar.gz";
    sha256 = "1566b65e9888c5e0bc21d6f73f490894ab35c648466e0d9859be961966cfa356";
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
