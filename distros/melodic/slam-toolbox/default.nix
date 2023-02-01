
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, cmake-modules, eigen, interactive-markers, libg2o, liblapack, map-server, message-filters, message-runtime, nav-msgs, pluginlib, qt5, rosconsole, roscpp, rostest, rosunit, rviz, sensor-msgs, slam-toolbox-msgs, sparse-bundle-adjustment, std-msgs, std-srvs, suitesparse, tbb, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-slam-toolbox";
  version = "1.1.6-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "SteveMacenski";
        repo = "slam_toolbox-release";
        rev = "release/melodic/slam_toolbox/1.1.6-1";
        sha256 = "sha256-iSoTo1FWLPpNNfqrmTEZCMt4bpF+p+l6kXPpGA39LHQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ ceres-solver eigen interactive-markers libg2o liblapack map-server message-filters message-runtime nav-msgs pluginlib qt5.qtbase rosconsole roscpp rostest rviz sensor-msgs slam-toolbox-msgs sparse-bundle-adjustment std-msgs std-srvs suitesparse tbb tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
