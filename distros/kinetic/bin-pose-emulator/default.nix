
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bin-pose-msgs, catkin, libyamlcpp, roscpp, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-bin-pose-emulator";
  version = "0.1.4";

  src = fetchurl {
    url = "https://github.com/durovsky/binpicking_utils-release/archive/release/kinetic/bin_pose_emulator/0.1.4-0.tar.gz";
    name = "0.1.4-0.tar.gz";
    sha256 = "28a3761aec2c63b42f99aaca2fea78f9d6b48f155fe07d8635979153b3880dd5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bin-pose-msgs libyamlcpp roscpp tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      bin_pose_emulator generates random poses of items in the predefined bin.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
