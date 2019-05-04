
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, sensor-msgs, catkin, pythonPackages, rospy, freeglut, tf }:
buildRosPackage {
  pname = "ros-kinetic-python-trep";
  version = "1.0.3-r1";

  src = fetchurl {
    url = https://github.com/MurpheyLab/trep-release/archive/release/kinetic/python_trep/1.0.3-1.tar.gz;
    sha256 = "8b4fdb09a82cba7b0f1ca40d6d4790b2c0d09fd7002d2d1cba01078196ce7b5d";
  };

  buildInputs = [ python pythonPackages.numpy pythonPackages.scipy pythonPackages.pyopengl rospy pythonPackages.pillow freeglut pythonPackages.matplotlib ];
  propagatedBuildInputs = [ python pythonPackages.numpy sensor-msgs pythonPackages.scipy pythonPackages.pyopengl rospy pythonPackages.pillow freeglut tf pythonPackages.matplotlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Trep: Mechanical Simulation and Optimal Control Software'';
    license = with lib.licenses; [ gpl3 ];
  };
}
