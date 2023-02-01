
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, dynamic-reconfigure, ethercat-trigger-controllers, rospy, rostest, wge100-camera }:
buildRosPackage {
  pname = "ros-melodic-pr2-camera-synchronizer";
  version = "1.6.31-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_robot-release";
        rev = "release/melodic/pr2_camera_synchronizer/1.6.31-1";
        sha256 = "sha256-R3+Z39SKLoHHXkJGFhCKmK+MKPMEIag8YNU+v+c6uWE=";
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
