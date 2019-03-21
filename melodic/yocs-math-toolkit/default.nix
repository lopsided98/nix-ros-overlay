
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-formatters, geometry-msgs, catkin, roscpp, ecl-build, ecl-exceptions, ecl-linear-algebra, tf, ecl-config }:
buildRosPackage {
  pname = "ros-melodic-yocs-math-toolkit";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_math_toolkit/0.8.2-0.tar.gz;
    sha256 = "53550a80b4e50074b5c5b15fe44f2d4e463ff9f768e6e662b7a7b3d65f2c32fd";
  };

  propagatedBuildInputs = [ ecl-exceptions ecl-formatters roscpp ecl-linear-algebra geometry-msgs tf ecl-config ecl-build ];
  nativeBuildInputs = [ ecl-formatters tf catkin ecl-config ecl-build ecl-exceptions ecl-linear-algebra roscpp geometry-msgs ];

  meta = {
    description = ''Math toolkit for Yujin open control system. This package is intended to contain common use functions,
    mostly for simple mathematics but also for tf-related conversions.
    By no means it pretends to be an efficient and robust, widely used math library, but a play ground where
    to put common code that is typically repeated in many robot control programs.'';
    #license = lib.licenses.BSD;
  };
}
