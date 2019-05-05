
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, nav-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-nav2d-localizer";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/lunar/nav2d_localizer/0.4.1-0.tar.gz;
    sha256 = "9e938e63fa354a1cba9e1cb92a7af7fc6c65f892cb419b7620c81aa11157fd0b";
  };

  buildInputs = [ sensor-msgs roscpp nav-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs roscpp nav-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper around Particle Filter implementation.
    The SelfLocalizer can be used as library or as a ros-node.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
