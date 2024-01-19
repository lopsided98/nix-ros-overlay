
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, dynamic-reconfigure, ethercat-trigger-controllers, rospy, rostest, wge100-camera }:
buildRosPackage {
  pname = "ros-noetic-pr2-camera-synchronizer";
  version = "1.6.32-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/noetic/pr2_camera_synchronizer/1.6.32-1.tar.gz";
    name = "1.6.32-1.tar.gz";
    sha256 = "3434b67c2318b2123904dd0dd32b046cbb892cb7672fbfa04af36e540b13578f";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ diagnostic-msgs dynamic-reconfigure ethercat-trigger-controllers rospy wge100-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
    The PR2 is equipped with a texture projector that can be used to
    project a texture onto featureless surfaces, allowing their
    three-dimensional structure to be determined using stereoscopy. The
    projector operates in a pulsed mode, producing brief (2ms) pulses of
    light. Cameras that want to see the texture must expose during the
    projector pulse; other cameras should be expose while the projector is
    off.
    </p>

    <p>
      This package contains the pr2_projector_synchronizer node. Based on its dynamically reconfigurable parameters, this node controls the projector pulsing, and sets up triggering of the WGE100 cameras.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
