
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, kdl-parser, nlopt, pkg-config, rclcpp, urdf }:
buildRosPackage {
  pname = "ros-rolling-trac-ik-lib";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trac_ik-release/archive/release/rolling/trac_ik_lib/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d13ed94586b55b8d04e4399703d8856268ea8b6f399ef4ac0315e3628c7993b8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen kdl-parser nlopt pkg-config rclcpp urdf ];
  nativeBuildInputs = [ ament-cmake ];

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
