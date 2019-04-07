
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, opencv-candidate, cmake-modules, boost, catkin, eigen, rosunit, ecto-opencv, ecto, ecto-ros }:
buildRosPackage {
  pname = "ros-kinetic-ecto-image-pipeline";
  version = "0.5.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ecto_image_pipeline-release/archive/release/kinetic/ecto_image_pipeline/0.5.7-0.tar.gz;
    sha256 = "9560ea03b3aafe4a085d9c2a590bece99d94fe992bec2f8bb61124a990434d99";
  };

  buildInputs = [ opencv-candidate cmake-modules boost eigen ecto ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ opencv-candidate boost eigen ecto-opencv ecto ecto-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common tools for image based pipelines. Includes stereo and mono camera drivers, rectification, image sinks, calibration, etc..'';
    #license = lib.licenses.BSD;
  };
}
