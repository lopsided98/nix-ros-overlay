
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, dynamic-reconfigure, ethercat-trigger-controllers, rospy, rostest, wge100-camera }:
buildRosPackage {
  pname = "ros-kinetic-pr2-camera-synchronizer";
  version = "1.6.30";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/kinetic/pr2_camera_synchronizer/1.6.30-0.tar.gz";
    name = "1.6.30-0.tar.gz";
    sha256 = "4f10b422067733cae30d81d7c3da19eefd20e0e5ec60d0e859230b9070725984";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
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
