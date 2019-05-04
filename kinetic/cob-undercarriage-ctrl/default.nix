
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, tf, catkin, cob-utilities, diagnostic-updater, nav-msgs, diagnostic-msgs, cob-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-undercarriage-ctrl";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_undercarriage_ctrl/0.6.13-0.tar.gz;
    sha256 = "fa6a675e7bfd1f53b0d61a837a71d7e60f53ae1f128a1fab56697ed247987770";
  };

  buildInputs = [ control-msgs cob-utilities roscpp diagnostic-updater nav-msgs diagnostic-msgs cob-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ control-msgs cob-utilities roscpp diagnostic-updater nav-msgs diagnostic-msgs cob-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_undercarriage_ctrl implements a controller for the omnidirectional base of Care-O-bot 3 on joint level. For a given Pltf-Twist the according wheel steering angles and linear wheel velocities are calculated based on the principle of rigid body motion. Each joint is than controlled individually to achieve the computed position and velocity'';
    license = with lib.licenses; [ asl20 ];
  };
}
