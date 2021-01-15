
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, ecto, ecto-opencv, ecto-ros, eigen, opencv-candidate, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-ecto-image-pipeline";
  version = "0.5.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ecto_image_pipeline-release/archive/release/kinetic/ecto_image_pipeline/0.5.7-0.tar.gz";
    name = "0.5.7-0.tar.gz";
    sha256 = "9560ea03b3aafe4a085d9c2a590bece99d94fe992bec2f8bb61124a990434d99";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ boost ecto ecto-opencv ecto-ros eigen opencv-candidate ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common tools for image based pipelines. Includes stereo and mono camera drivers, rectification, image sinks, calibration, etc..'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
