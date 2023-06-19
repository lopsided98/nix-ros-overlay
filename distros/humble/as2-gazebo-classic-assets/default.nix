
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-humble-as2-gazebo-classic-assets";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_gazebo_classic_assets/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "477f21412deac910cf808df605e1f60cd241136ca56688a9cd003844d51e95e9";
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
