/**
 * The base abstract interface from which all graph implementations
 * and interfaces inherit (directly or indirectly). Like Ranges,
 * this module defines several templates to test if a given object is
 * a graph, what kind of graph it is, and what graph capabilities it has.
 * In addition to these templates, this module provides a number of
 * object and interface definitions that can be used to wrap around 
 * concrete 
 *
 * Conceptually, Graph and it's derived interfaces can be thought
 * of as graph-based analogs to the hierarchy of Phobos Range interfaces.
 * The intent is to provide an abstract interface for access to vertexes
 * and edges (be they implemented as lists, arrays, an adjacency matrix, an 
 * infinite generating function, etc.) such that graph-based algorithms can
 * operate on various different graph implementations without modification.
 * This is the same rationale for Ranges.  Ideally, algorithms are implemented
 * using the most abstract interface as possible to maximize the number of
 * concrete graph types that can be used with the algorithm.  See the Boost
 * Graph Library for examples and explanations.
 *
 * Note: From the perspective of traditional graphs (directed and undirected)
 *       this is the most abstract (root of hierarchy tree); however, from
 *       a higher mathematics perspective, a graph is just a special case of a 
 *       2-uniform hypergraph and in fact a hypergraph is a special case of 
 *       general incidence structures, and so on.  One may then ask "why not
 *       inherit from the templated hypergraph abstraction?"  (Indeed, the
 *       original name of this library was libHyperGraph.)  Although we
 *       certainly could, the traditional graph concept has many well-known
 *       use cases and certain performance and simplification advantages 
 *       compared to hypergraphs.  The added baggage and complexity of a full-
 *       blown hypergraph or higher generalization would likely confuse users
 *       needing simple graph-based algorithms/structures and potentially 
 *       impact performance (either compile-time and/or runtime).
 *
 * Copyright: Copyright Doug Nickerson 2015
 * License:   $(WEB www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Authors:   Doug Nickerson
 */

//          Copyright Doug Nickerson 2015.
// Distributed under the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE_1_0.txt or copy at
//          http://www.boost.org/LICENSE_1_0.txt)

module ultragraph.model.graph;

interface Graph
{
}