
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, diagnostic-msgs, cob-msgs, cob-utilities, tf, catkin, roscpp, diagnostic-updater, nav-msgs, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-undercarriage-ctrl";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_undercarriage_ctrl/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "77a417a6b997393d84e3b52e49141f55fd6277815367b3da5fee26e85a40b85e";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-msgs geometry-msgs cob-msgs cob-utilities tf control-msgs roscpp nav-msgs diagnostic-updater ];
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs cob-msgs cob-utilities tf control-msgs roscpp nav-msgs diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_undercarriage_ctrl implements a controller for the omnidirectional base of Care-O-bot 3 on joint level. For a given Pltf-Twist the according wheel steering angles and linear wheel velocities are calculated based on the principle of rigid body motion. Each joint is than controlled individually to achieve the computed position and velocity'';
    license = with lib.licenses; [ asl20 ];
  };
}
