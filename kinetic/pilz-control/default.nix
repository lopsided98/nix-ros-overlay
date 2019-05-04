
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-srvs, cmake-modules, roslint, catkin, joint-trajectory-controller, rostest, controller-interface, code-coverage, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pilz-control";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/pilz_control/0.4.8-0.tar.gz;
    sha256 = "2116c2288aa5b3caad6f762dad24d75c163851d8f697ad57f6f3c8c5c3cd1578";
  };

  buildInputs = [ controller-manager std-srvs cmake-modules roslint joint-trajectory-controller controller-interface roscpp ];
  checkInputs = [ rostest code-coverage ];
  propagatedBuildInputs = [ controller-manager std-srvs joint-trajectory-controller controller-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a specialized joint_trajectory_controller that can be moved into holding state via service call.
  No further trajectories will be accepted/followed in this state.'';
    license = with lib.licenses; [ asl20 ];
  };
}
