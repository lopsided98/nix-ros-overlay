
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-utilities, control-msgs, diagnostic-msgs, diagnostic-updater, geometry-msgs, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-undercarriage-ctrl";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_undercarriage_ctrl/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "d1e6987fb542fa7e17c4d38b046bed71aa48d472ed960cb3e7fcaf061f9eded5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-msgs cob-utilities control-msgs diagnostic-msgs diagnostic-updater geometry-msgs nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "cob_undercarriage_ctrl implements a controller for the omnidirectional base of Care-O-bot 3 on joint level. For a given Pltf-Twist the according wheel steering angles and linear wheel velocities are calculated based on the principle of rigid body motion. Each joint is than controlled individually to achieve the computed position and velocity";
    license = with lib.licenses; [ asl20 ];
  };
}
