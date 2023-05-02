
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-humble-as2-gazebo-classic-assets";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_gazebo_classic_assets/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "4e2bea6631e3f6cd87fd474c05dd713ae23077ab9ad27c6bd694f8ff574d622e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ python3Packages.jinja2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo classic resources'';
    license = with lib.licenses; [ bsd3 ];
  };
}
