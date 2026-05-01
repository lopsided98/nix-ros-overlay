
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, geometry-msgs, kdl-parser, nlopt, pkg-config, rclcpp, urdf }:
buildRosPackage {
  pname = "ros-lyrical-trac-ik-lib";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trac_ik-release/archive/release/lyrical/trac_ik_lib/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "2d515af33d01e3354a06914886ef74584caa07bb66dbf1ffe800bd207c9808c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module geometry-msgs kdl-parser nlopt pkg-config rclcpp urdf ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "TRAC-IK is a faster, significantly more reliable drop-in replacement for
    KDL's pseudoinverse Jacobian solver.

    The TRAC-IK library has a very similar API to KDL's IK solver calls,
    except that the user passes a maximum time instead of a maximum number of
    search iterations.  Additionally, TRAC-IK allows for error tolerances to
    be set independently for each Cartesian dimension (x,y,z,roll,pitch.yaw).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
