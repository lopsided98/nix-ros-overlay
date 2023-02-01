
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, liblapack, moveit-core, pluginlib, roscpp, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-abb-irb2400-moveit-plugins";
  version = "1.3.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-industrial-release";
        repo = "abb-release";
        rev = "release/melodic/abb_irb2400_moveit_plugins/1.3.1-1";
        sha256 = "sha256-2axj+H2sHPZOQhrz60zitsGJpO4g4E4dB07pfVA/gLM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ liblapack moveit-core pluginlib roscpp tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      MoveIt plugins for the ABB 2400 (and variants).
    </p>
    <p>
      This package contains plugins for use with MoveIt and ABB 2400 manipulators.
      Plugins included support the 2400. See the ABB 2400 support package for
      information on used joint angle and velocity limits.
    </p>
    <p>
      Before using any of the plugins included in this package, be sure to
      check they are correct for the particular robot model and configuration
      you intend to use them with.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
