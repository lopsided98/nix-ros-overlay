
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-utilities, control-msgs, diagnostic-msgs, diagnostic-updater, geometry-msgs, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-undercarriage-ctrl";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_undercarriage_ctrl/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "b4417c4c32af77b23c354e5ca649e8df5293b6bea76ef8933875fef31be185cf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-utilities control-msgs diagnostic-msgs diagnostic-updater geometry-msgs nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_undercarriage_ctrl implements a controller for the omnidirectional base of Care-O-bot 3 on joint level. For a given Pltf-Twist the according wheel steering angles and linear wheel velocities are calculated based on the principle of rigid body motion. Each joint is than controlled individually to achieve the computed position and velocity'';
    license = with lib.licenses; [ asl20 ];
  };
}
