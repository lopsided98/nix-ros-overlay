
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, husky-description, interactive-marker-twist-server, joint-state-controller, joint-trajectory-controller, joy, multimaster-launch, robot-localization, robot-state-publisher, roslaunch, rostopic, teleop-twist-joy, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-husky-control";
  version = "0.4.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_control/0.4.6-1.tar.gz";
    name = "0.4.6-1.tar.gz";
    sha256 = "fa1f6596f56130d8684fdb9f449b14f9261dd18bd1a059f76bb68b914f4a42b0";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller husky-description interactive-marker-twist-server joint-state-controller joint-trajectory-controller joy multimaster-launch robot-localization robot-state-publisher rostopic teleop-twist-joy twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
